module Lib () where

import Text.Show.Functions ()

typePersonaje = (String, String, String, Bool, Int)
personajeEspina :: Personaje
personajeEspina = ("Espina", "Bola de espina", "Granada de espina", True, 4800)

personajePamela :: Personaje
personajePamela = ("Pamela", "LLuvia de tuercas sanadoras", "Torreta curativa", False, 9600)

personajes :: [Personaje]
personajes = [personajeEspina, personajePamela]

vidaPersonaje :: Personaje -> Int
vidaPersonaje (_ ,_ ,_ ,_ , vida) = vida

vidaMenorA :: Personaje -> Int -> Bool
vidaMenorA personaje danio = (vidaPersonaje personaje) < danio

bolaEspina :: Personaje -> Int
bolaEspina personaje
  |vidaMenorA personaje 1000 = 0
  |otherwise = (vidaPersonaje personaje) - 1000

esSanadora :: Personaje -> Bool
esSanadora (_, "LLuvia de tuercas sanadoras",_ ,_ ,_) = True
esSanadora _ = False

sumaVida :: Personaje -> Int
sumaVida personaje = (vidaPersonaje personaje) + 800

mitadDeVida :: Personaje -> Int
mitadDeVida personaje = div (vidaPersonaje personaje) 2

disminuyeMitadDeVida :: Personaje -> Int
disminuyeMitadDeVida personaje = vidaPersonaje personaje - mitadDeVida personaje

lluviaDeTuercas :: Personaje -> Int
  |esSanadora personaje = sumaVida personaje
  |otherwise personaje = disminuyeMitadDeVida personaje