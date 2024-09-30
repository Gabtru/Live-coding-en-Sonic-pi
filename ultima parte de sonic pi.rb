# Configuración del tempo
use_bpm 90  # BPM típico del reggaetón

# Batería de dembow (bombo y caja)
live_loop :dembow do
  # Bombo (kick)
  sample :bd_tek, amp: 1  # Golpe de bombo fuerte
  sleep 0.5
  
  # Caja (snare)
  sample :sn_dolf, amp: 1  # Golpe de caja
  sleep 0.25
  
  # Segundo bombo más suave
  sample :bd_tek, amp: 1
  sleep 0.25
  
  # Segunda caja
  sample :sn_dolf, amp: 1
  sleep 0.5
  
  # Tercer bombo
  sample :bd_tek, amp: 1
  sleep 0.5
  if tick > 20  # Pausa después de 35 y 20 ciclos
    stop
  end
end

# Hi-hat o shaker para darle ritmo adicional
live_loop :hihat do
  sync :dembow  # Sincronizar con el dembow
  sample :drum_cymbal_closed, amp: 0.8, rate: 2  # Hi-hat rápido
  sleep 0.25
  if tick > 20  # Pausa después de 35 y 20 ciclos
    stop
  end
end

# Añadir un bajo básico
live_loop :bassline do
  sync :dembow  # Sincronizar con el dembow
  use_synth :fm  # Sintetizador para el bajo
  play :e2, release: 0.5, cutoff: 80  # Nota de bajo en Mi
  sleep 0.5
  play :e2, release: 0.5, cutoff: 80
  sleep 1
  play :d2, release: 0.5, cutoff: 80  # Nota de bajo en Re
  sleep 0.5
  if tick > 20  # Pausa después de 35 y 20 ciclos
    stop
  end
end




