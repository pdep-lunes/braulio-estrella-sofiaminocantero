module Lib () where

import Text.Show.Functions ()

typePersonaje = (String, String, String, Bool, Int)
personajeEspina :: Personaje
personajeEspina = ("Espina", "Bola de espina", "Granada de espina", true, 4800)

personajePamela :: Personaje
personajePamela = ("Pamela", "LLuvia de tuercas sanadoras", "Torreta curativa", false, 9600)

personajes :: [Personaje]
personajes = [personajeEspina, personajePamela]

bolaEspina :: Int -> Int
bolaEspina vidaOponente = vidaOponente - 1000

