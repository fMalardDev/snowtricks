<?php

namespace App\Entity;

use Cocur\Slugify\Slugify;
use Doctrine\ORM\Mapping as ORM;
use Doctrine\ORM\Mapping\OrderBy;
use Doctrine\Common\Collections\Collection;
use Doctrine\Common\Collections\ArrayCollection;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Symfony\Component\Validator\Context\ExecutionContextInterface;

/**
 * @ORM\Entity(repositoryClass="App\Repository\FigureRepository")
 * @ORM\HasLifecycleCallbacks
 * @UniqueEntity("nom")
 */
class Figure
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $nom;

    /**
     * @ORM\Column(type="text")
     */
    private $description;

    /**
     * note : nullable car peut supprimer utilisateur sans supprimer figure
     * 
     * @ORM\ManyToOne(
     *      targetEntity="App\Entity\Utilisateur",
     *      inversedBy="figures"
     * )
     */
    private $editeur;

    /**
     * @ORM\OneToMany(
     *      targetEntity="App\Entity\Commentaire",
     *      mappedBy="figure",
     *      orphanRemoval=true
     * )
     */
    private $commentaires;

    /**
     * @ORM\ManyToOne(
     *      targetEntity="App\Entity\Groupe",
     *      inversedBy="figures"
     * )
     * @ORM\JoinColumn(nullable=false)
     */
    private $groupe;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $slug;

    /**
     * @ORM\OneToMany(
     *      targetEntity="App\Entity\Illustration",
     *      mappedBy="figure",
     *      orphanRemoval=true
     * )
     * @ A ssert \ All({
     *      @ Assert \ Valid
     * })
     */
    private $illustrations;

    /**
     * @ORM\OneToMany(
     *      targetEntity="App\Entity\Video",
     *      mappedBy="figure",
     *      orphanRemoval=true
     * )
     */
    private $videos;

    /**
     * @ORM\Column(type="datetime")
     */
    private $dateCreation;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $dateModification;

    /**
     * @ORM\OneToMany(
     *      targetEntity="App\Entity\Difficulte",
     *      mappedBy="figure",
     *      orphanRemoval=true
     * )
     */
    private $difficultes;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\Figure", inversedBy="suitesPossibles")
     */
    private $prerequis;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\Figure", mappedBy="prerequis")
     */
    private $suitesPossibles;

    /**
     * @ORM\ManyToMany(targetEntity="App\Entity\Utilisateur", mappedBy="favoris")
     */
    private $interesses;

    /**
     * @ORM\PrePersist
     */
    public function prepare()
    {
        if (empty($this->slug))
            $this->slug = (new Slugify())->slugify($this->nom);
        if (empty($this->dateCreation))
            $this->dateCreation = new \DateTime();
    }

    /**
     * @ORM\PreUpdate
     */
    public function updating()
    {
        $this->slug = (new Slugify())->slugify($this->nom);
        $this->dateModification = new \DateTime();
    }

    /**
     * @Assert\Callback
     */
    public function verifieIllustrations(ExecutionContextInterface $context, $payload)
    {
        $extensionsInterdites = false;

        foreach ($this->illustrations as $illustration) {
            $url = $illustration->getUrl();
            if (! preg_match('/((.jpg)|(.jpeg)|(.png)|(.gif))$/', $url))
                $extensionsInterdites = true;
        }

        if ($extensionsInterdites)
        {
            $context->buildViolation("L'un des fichiers semble ne pas ??tre une image. Seuls les extensions jpg, jpeg, png et gif sont accept??s.")
                    ->atPath("illustrations")
                    ->addViolation();
        }
    }

    public function __construct()
    {
        $this->commentaires = new ArrayCollection();
        $this->illustrations = new ArrayCollection();
        $this->videos = new ArrayCollection();
        $this->difficultes = new ArrayCollection();
        $this->prerequis = new ArrayCollection();
        $this->suitesPossibles = new ArrayCollection();
        $this->interesses = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): self
    {
        $this->nom = $nom;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getEditeur(): ?Utilisateur
    {
        return $this->editeur;
    }

    public function setEditeur(?Utilisateur $editeur): self
    {
        $this->editeur = $editeur;

        return $this;
    }

    /**
     * @return Collection|Commentaire[]
     */
    public function getCommentaires(): Collection
    {
        return $this->commentaires;
    }

    public function addCommentaire(Commentaire $commentaire): self
    {
        if (!$this->commentaires->contains($commentaire)) {
            $this->commentaires[] = $commentaire;
            $commentaire->setFigure($this);
        }

        return $this;
    }

    public function removeCommentaire(Commentaire $commentaire): self
    {
        if ($this->commentaires->contains($commentaire)) {
            $this->commentaires->removeElement($commentaire);
            // set the owning side to null (unless already changed)
            if ($commentaire->getFigure() === $this) {
                $commentaire->setFigure(null);
            }
        }

        return $this;
    }

    public function getGroupe(): ?Groupe
    {
        return $this->groupe;
    }

    public function setGroupe(?Groupe $groupe): self
    {
        $this->groupe = $groupe;

        return $this;
    }

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    public function setSlug(string $slug): self
    {
        $this->slug = $slug;

        return $this;
    }

    /**
     * @return Collection|Illustration[]
     */
    public function getIllustrations(): Collection
    {
        return $this->illustrations;
    }

    public function setIllustrations($illustrations)
    {
        $this->illustrations = $illustrations;

        return $this;
    }

    public function addIllustration(Illustration $illustration): self
    {
        if (!$this->illustrations->contains($illustration)) {
            $this->illustrations[] = $illustration;
            $illustration->setFigure($this);
        }

        return $this;
    }

    public function removeIllustration(Illustration $illustration): self
    {
        if ($this->illustrations->contains($illustration)) {
            $this->illustrations->removeElement($illustration);
            // set the owning side to null (unless already changed)
            if ($illustration->getFigure() === $this) {
                $illustration->setFigure(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|Video[]
     */
    public function getVideos(): Collection
    {
        return $this->videos;
    }

    public function setVideos($videos)
    {
        $this->videos = $videos;

        return $this;
    }

    public function addVideo(Video $video): self
    {
        if (!$this->videos->contains($video)) {
            $this->videos[] = $video;
            $video->setFigure($this);
        }

        return $this;
    }

    public function removeVideo(Video $video): self
    {
        if ($this->videos->contains($video)) {
            $this->videos->removeElement($video);
            // set the owning side to null (unless already changed)
            if ($video->getFigure() === $this) {
                $video->setFigure(null);
            }
        }

        return $this;
    }

    public function getDateCreation(): ?\DateTimeInterface
    {
        return $this->dateCreation;
    }

    public function getDateCreationString()
    {
        return $this->dateCreation->format('d/m/Y H:i:s');
    }

    public function getDateCreationTimestamp()
    {
        return $this->dateCreation->getTimestamp();
    }

    public function setDateCreation(\DateTimeInterface $dateCreation): self
    {
        $this->dateCreation = $dateCreation;

        return $this;
    }

    public function getDateModificationString()
    {
        return $this->dateModification->format('d/m/Y H:i:s');
    }

    public function getDateModification(): ?\DateTimeInterface
    {
        return $this->dateModification;
    }

    public function setDateModification(?\DateTimeInterface $dateModification): self
    {
        $this->dateModification = $dateModification;

        return $this;
    }

    /**
     * @return Collection|Difficulte[]
     */
    public function getDifficultes(): Collection
    {
        return $this->difficultes;
    }

    public function addDifficulte(Difficulte $difficulte): self
    {
        if (!$this->difficultes->contains($difficulte)) {
            $this->difficultes[] = $difficulte;
            $difficulte->setFigure($this);
        }

        return $this;
    }

    public function removeDifficulte(Difficulte $difficulte): self
    {
        if ($this->difficultes->contains($difficulte)) {
            $this->difficultes->removeElement($difficulte);
            // set the owning side to null (unless already changed)
            if ($difficulte->getFigure() === $this) {
                $difficulte->setFigure(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|self[]
     */
    public function getPrerequis(): Collection
    {
        return $this->prerequis;
    }

    /**
     * regarde tous les prerequis indirects (prerequis des prerequis) jusqu'?? un certain niveau de profondeur ($profondeurMaxRecherche) pour ??viter de trop ralentir le site. Sert ?? ??viter d'ajouter en pr??requis une figure qui est d??j?? en pr??requis d'une autre figure (ex : si l'utilisateur dit que pour apprendre le salto vrill?? il faut connaitre le salto, la vrille et le saut, et que le saut est d??j?? en pr??requis du salto, le saut ne sera pas ajout?? aux pr??requis du salto vrill??. Aide a avoir une organisation plus claire.)
     * 
     * @return Collection|self[]
     */
    public function getPrerequisIndirects($profondeurMaxRecherche = 8): Collection
    {
        if ($this->prerequis != null && ! $this->prerequis->isEmpty())
        {
            $prerequisIndirects = clone $this->prerequis; // les pr??requis "indirects" portent mal leurs noms (ils contiennent les pr??requis directs) ce sont tous les pr??requis de la figure, directs ou non
            
            $longueur = count($prerequisIndirects);
            $premierAVerifier = 0; // indice du premier pr??requis ?? scanner pour ajouter ses propres pr??requis ?? la liste
            $trouveNouveauxAuTourPrecedent = true; // si on v??rifie tous les pr??requis du tableau sans en trouver de nouveaux, ??a ne sert ?? rien de continuer ?? chercher les pr??requis indirects
            $toursRestants = $profondeurMaxRecherche; // pour ??viter que le temps de calcul soit trop long
            
            while ($toursRestants > 0 && $trouveNouveauxAuTourPrecedent)
            { 
                $longueurDebutTour = $longueur; // pour voir si on trouve de nouveaux ??l??ments, et pour savoir o?? commencer ?? scanner la prochaine fois (les ??l??ments nouveaux ?? la fin du tour sont ceux entre $longueurDebutTour et $longueur, qui devrait elle m??me grandir au fil du tour)
                for ($i=$premierAVerifier; $i < $longueurDebutTour; $i++) // les nouveaux ??l??ments du tour pr??c??dent (ou du d??but si premier tour)
                { 
                    $prerequisAScanner = $prerequisIndirects[$i]; // pr??requis dont on va chercher les pr??requis ?? ce tour ci
                    /*dump($this);
                    dump($this->prerequis);
                    dump($prerequisAScanner);
                    die();*/
                    if ($prerequisAScanner != null)
                    {
                        $prerequisDuPrerequis = $prerequisAScanner->getPrerequis();
                        foreach ($prerequisDuPrerequis as $prerequisNivInf)
                        {
                            // le if ??vite les boucles et les r??p??titions
                            if ($prerequisNivInf != $this && ! $prerequisIndirects->contains($prerequisNivInf)) // plutot contains ?
                            {
                                $prerequisIndirects[] = $prerequisNivInf; // on ajoute le pr??requis ?? la liste des pr??requis indirects s'il ne s'y trouve pas d??j??
                                $longueur++;
                            }
                        }
                    }
                }
                
                $trouveNouveauxAuTourPrecedent = ($longueur != $longueurDebutTour); // de nouveaux ??l??ments ont ??t?? trouv??s si la taille du tableau a augment??e
                $premierAVerifier = $longueurDebutTour; // au tour pr??c??dent, on scannera les pr??requis qui viennent d'??tre ajout??s ?? ce tour
                $toursRestants--;
            }

            return $prerequisIndirects;
        }
        else
        {
            return new ArrayCollection();
        }
    }
    
    public function addPrerequi(self $prerequi): self
    {
        if ($this->prerequis != null && ! $this->prerequis->isEmpty())
        {
            foreach ($this->prerequis as $prerequisDejaPresents)
            {
                if ($prerequi != $this && $prerequisDejaPresents->getSuitesPossiblesIndirectes()->contains($prerequi))
                {
                    $this->removePrerequi($prerequisDejaPresents);
                }
            }
        }
        if ($prerequi != $this && ($this->getPrerequisIndirects() == null || !$this->getPrerequisIndirects()->contains($prerequi)))
        {
            $this->prerequis[] = $prerequi;
        }
        
        return $this;
    }
    
    public function removePrerequi(self $prerequi): self
    {
        if ($this->prerequis->contains($prerequi)) {
            $this->prerequis->removeElement($prerequi);
        }
        
        return $this;
    }

    public function removeAllPrerequis()
    {
        $this->prerequis = new ArrayCollection();;
    }
    
    /**
     * @return Collection|self[]
     */
    public function getSuitesPossibles(): Collection
    {
        return $this->suitesPossibles;
    }
    
    /**
     * analogue ?? prerequisIndirects mais  pour les suites possibles (les figures qui seront accessibles gr??ce ?? l'apprentissage de la figure $this)
     * 
     * @return Collection|self[]
     */
    public function getSuitesPossiblesIndirectes($profondeurMaxRecherche = 5): Collection
    {
        if ($this->suitesPossibles != null && ! $this->suitesPossibles->isEmpty())
        {
            $suitesPossiblesIndirects = clone $this->suitesPossibles; // note : rempli automatiquement ? V??rifier

            $longueur = count($suitesPossiblesIndirects);
            $premierAVerifier = 0;
            $trouveNouveauxAuTourPrecedent = true;
            $toursRestants = $profondeurMaxRecherche;

            while ($toursRestants > 0 && $trouveNouveauxAuTourPrecedent)
            { 
                $longueurDebutTour = $longueur;
                for ($i=$premierAVerifier; $i < $longueurDebutTour; $i++)
                { 
                    $suitePossiblesAScanner = $suitesPossiblesIndirects[$i];
                    $suitesPossiblesDeLaSuitePossible = $suitePossiblesAScanner->getSuitesPossibles();
                    foreach ($suitesPossiblesDeLaSuitePossible as $suitePossiblesNivInf)
                    {
                        if ($suitePossiblesNivInf != $this && ! $suitesPossiblesIndirects->contains($suitePossiblesNivInf))
                        {
                            $suitesPossiblesIndirects[] = $suitePossiblesNivInf;
                            $longueur++;
                        }
                    }
                }
                
                $trouveNouveauxAuTourPrecedent = ($longueur != $longueurDebutTour);
                $premierAVerifier = $longueurDebutTour;
                $toursRestants--;
            }

            return $suitesPossiblesIndirects;
        }
        else
        {
            return new ArrayCollection();
        }

    }

    public function addSuitesPossible(self $suitesPossible): self
    {
        if (!$this->suitesPossibles->contains($suitesPossible)) {
            $this->suitesPossibles[] = $suitesPossible;
            $suitesPossible->addPrerequi($this);
        }

        return $this;
    }

    public function removeSuitesPossible(self $suitesPossible): self
    {
        if ($this->suitesPossibles->contains($suitesPossible)) {
            $this->suitesPossibles->removeElement($suitesPossible);
            $suitesPossible->removePrerequi($this);
        }

        return $this;
    }

    /**
     * @return Collection|Utilisateur[]
     */
    public function getInteresses(): Collection
    {
        return $this->interesses;
    }

    public function setInteresses($interesses)
    {
        $this->interesses = $interesses;

        foreach ($interesses as $interesse) {
            $interesse->addFavori($this);
        }

        return $this;
    }

    public function addInteress(Utilisateur $interess): self
    {
        if (!$this->interesses->contains($interess)) {
            $this->interesses[] = $interess;
            $interess->addFavori($this);
        }

        return $this;
    }

    public function removeInteress(Utilisateur $interess): self
    {
        if ($this->interesses->contains($interess)) {
            $this->interesses->removeElement($interess);
            $interess->removeFavori($this);
        }

        return $this;
    }

    public function getDifficulteEditeur()
    {
        $editeur = $this->editeur;

        $difficultes = $this->difficultes;

        foreach ($difficultes as $difficulte)
        {
            $notant = $difficulte->getNotant();

            if ($notant == $editeur)
                return $difficulte->getNote();
        }

        return null;
    }

    public function getDifficulteMoyenneSansEditeur()
    {
        $sommeSansEditeur = 0;
        $nbDifficultesSansEditeur = 0;

        $editeur = $this->editeur;

        $difficultes = $this->difficultes;

        foreach ($difficultes as $difficulte) {
            $notant = $difficulte->getNotant();

            if ($notant != $editeur)
            {
                $sommeSansEditeur += $difficulte->getNote();
                $nbDifficultesSansEditeur++;
            } 
        }

        if ($nbDifficultesSansEditeur == 0)
            return null;
        else
            return round($sommeSansEditeur / $nbDifficultesSansEditeur);
    }

    public function getDifficulteUtilisateur($utilisateur)
    {
        if ($utilisateur == null)
            return null;
        
        $difficultes = $this->difficultes;

        foreach ($difficultes as $difficulte)
        {
            $notant = $difficulte->getNotant();

            if ($notant == $utilisateur)
                return $difficulte->getNote();
        }

        return null;
    }

    // calcule le nombre de difficult??s ?? afficher pour la figure
    public function nbAffichagesDifficulte($utilisateur)
    {
        $nbAffichages = 0;

        if ($utilisateur != null)
            $nbAffichages++;
        if ($this->getDifficulteEditeur() != null && $this->editeur != $utilisateur)
            $nbAffichages++;
        if ($this->getDifficulteMoyenneSansEditeur() != null)
            $nbAffichages++;
        
        return $nbAffichages;
    }

    public function couleurTitreDifficulte()
    {
        $difficulteGlobale = null;
        $couleurTitreDifficulte = "white";
        $difficulteMoyenneSansEditeur = $this->getDifficulteMoyenneSansEditeur();
        $difficulteEditeur = $this->getDifficulteEditeur();

        if ($difficulteMoyenneSansEditeur != null and $difficulteEditeur != null)
        {
            $difficulteGlobale = round(($difficulteMoyenneSansEditeur + $difficulteEditeur) / 2);
        }
        elseif ($difficulteEditeur != null)
        {
            $difficulteGlobale = $difficulteEditeur;
        }
        else
        {
            $difficulteGlobale = $difficulteMoyenneSansEditeur;
        }

        if ($difficulteGlobale != null)
        {
            $rouge = min(round(($difficulteGlobale-1)*(255/4.5)), 255);
            $vert = min(round((10-$difficulteGlobale)*(255/4.5)), 255);
            $couleurTitreDifficulte = "rgb(" . $rouge . ", " . $vert . ", 0)";
        }

        return $couleurTitreDifficulte;
    }

    public function estInteresse($utilisateur)
    {
        foreach ($this->interesses as $interesse) {
            if ($interesse == $utilisateur)
                return true;
        }

        return false;
    }
}
