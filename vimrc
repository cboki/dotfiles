" VIM Configuration - Clément Bouakkaz
" Annule la compatibilité avec l'ancetre Vi
set nocompatible
" Activation de pathogen
call pathogen#infect()
" -- Affichage
set title                    " Met à jour le titre de la fenetre / terminal
set number                   " Affiche le numero ddes lignes
set ruler                    " Affiche la position actuelle du curseur
set wrap                     " Affiche les lignes trop longues sur plusieurs

set scrolloff=3              " Affiche un minimum de 3 ligne autour du curseur

" -- Recherche
set ignorecase               " Ignore la casse par défaut lors d'une recherche
set smartcase                " Si une recherche contient une majuscule,
                             " re-active la sensibilité à la casse
set incsearch                " Surligne les resultats de recherche pendant la
                             " saisie
set hlsearch                 " Surligne les resultats de recherche

" -- Beep
set visualbell               " Empeche Vim de beeper
set noerrorbells             " Empeche Vim de beeper

" Active le comportement 'habituel' de la touche retour en arriere
set backspace=indent,eol,start

" Cache les fichiers lors de l'ouverture d'autres fichiers
set hidden

" Active la coloration syntaxique
syntax enable

"Active les comportements specifiques aux types de fichiers comme
" la syntaxe et l'indentation
filetype on
filetype plugin on
filetype indent on

" Utilise la version sombre de Solarized
set background=dark
colorscheme solarized

" Desactiver les touches directionnelles
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Les ; sont rarement utilises l'un a la suite de l'autre -
" Ils remplacent la touche ECHAP
:imap ;; <Esc>
:map ;; <Esc>
