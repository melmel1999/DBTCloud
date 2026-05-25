SELECT
  sc.nom_segment,
  tv.nom_type_vehicule,
  COUNT(t.id_trajet) AS nombre_trajets,
  SUM(t.montant_total) AS total_revenus
FROM `vtcp_us.trajets` t
JOIN `vtcp_us.clients` c ON t.id_client = c.id_client
JOIN `vtcp_us.segments_clients` sc ON c.id_segment = sc.id_segment
JOIN `vtcp_us.vehicules` v ON t.id_vehicule = v.id_vehicule
JOIN `vtcp_us.types_vehicule` tv ON v.id_type_vehicule = tv.id_type_vehicule
GROUP BY sc.nom_segment, tv.nom_type_vehicule
ORDER BY total_revenus DESC