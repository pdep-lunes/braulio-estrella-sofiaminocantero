module Lib () where

import Text.Show.Functions ()

typePersonaje = (String, String, String, Bool, Int)
personajeEspina :: Personaje
personajeEspina = ("Espina", "Bola de espina", "Granada de espina", true, 4800)

personajePamela :: Personaje
personajePamela = ("Pamela", "LLuvia de tuercas sanadoras", "Torreta curativa", false, 9600)

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

