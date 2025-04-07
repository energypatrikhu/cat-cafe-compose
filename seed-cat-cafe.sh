echo "Seeding the database..."
docker exec -it cat-cafe-backend sh -c "cd /app && npx --yes prisma db seed"
