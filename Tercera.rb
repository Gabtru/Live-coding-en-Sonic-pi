use_bpm 160  # BPM más rápido para hardcore techno

# Bombo pesado distorsionado
live_loop :hard_kick do
  sample :bd_tek, amp: 6, cutoff: 120  # Bombo fuerte y cortado
  sleep 1
end



# Hi-hat rápido para energía
live_loop :fast_hihat do
  sync :hard_kick
  sample :drum_cymbal_closed, amp: 6, rate: 2  # Hi-hat rápido
  sleep 0.25
end

# Clap distorsionado en el segundo tiempo
live_loop :distorted_clap do
  sync :hard_kick
  sleep 0.5
  sample :perc_snap, amp: 1.5, rate: 0.8  # Clap más profundo y distorsionado
  sleep 0.5
end

# Añadir ruido blanco para agresividad
live_loop :white_noise do
  sync :hard_kick
  with_fx :distortion, distort: 0.8 do  # Filtro de distorsión
    sample :ambi_haunted_hum, rate: 0.25, amp: 1.5  # Sonido ambiente distorsionado
  end
  sleep 4
end



