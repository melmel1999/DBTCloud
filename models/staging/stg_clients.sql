SELECT
id_client,
nom_client,
prenom_client,
email_client,
id_segment
FROM `vtcp_us.clients`
WHERE email_client IS NOT NULL