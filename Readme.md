# 🔐 API d'Authentification Sécurisée

Une API RESTful moderne et sécurisée pour la gestion de l'authentification utilisateur, construite avec **Node.js**, **Express** et **MySQL**. Ce projet demonstrates la mise en œuvre de **JWT** (JSON Web Tokens) pour les sessions, du hachage de mot de passe avec **bcrypt**, et inclut un système d'audit pour journaliser toutes les tentatives de connexion.

## ✨ Fonctionnalités

*   **Authentification Classique** : Inscription et connexion par email/mot de passe.
*   **Sécurité Renforcée** : Mots de passe hachés avec `bcryptjs`.
*   **Sessions JWT** : Génération et validation de tokens pour une authentification stateless.
*   **Journalisation des Connexions** : Audit complet de toutes les tentatives de connexion (succès/échec, IP, date).
*   **Middleware de Protection** : Sécurisation des routes API grâce à un middleware qui vérifie les JWT.
*   **Architecture RESTful** : Conception d'API claire et structurée.

## 🛠️ Technologies Utilisées

*   **Backend** : Node.js, Express.js
*   **Base de Données** : MySQL
*   **Sécurité** : JWT (jsonwebtoken), bcryptjs
*   **Base de données** : mysql2

## 📦 Installation et Démarrage

1.  **Cloner le dépôt**
    ```bash
    git clone https://github.com/fordimalanda/auth-api-node-mysql.git
    cd auth-api-node-mysql
    ```

2.  **Installer les dépendances**
    ```bash
    npm install
    ```

3.  **Configuration de la Base de Données**
    *   Créer une base de données MySQL.
    *   Importer le fichier `db.sql` (à créer) pour configurer les tables.

4.  **Configuration de l'Environnement**
    *   Créer un fichier `.env` à la racine du projet basé sur le modèle `.env.example` :
    ```bash
    DB_HOST=localhost
    DB_USER=root
    DB_PASSWORD=
    DB_NAME=auth_app
    JWT_SECRET=clé_secrète
    JWT_EXPIRES_IN=24h
    ```

5.  **Démarrer le serveur**
    *   Pour la production :
        ```bash
        npm start
        ```
    *   Pour le développement (avec rechargement automatique) :
        ```bash
        npm run dev
        ```

Le serveur API est maintenant opérationnel sur `http://localhost:3000`.

## 🚀 Utilisation de l'API

### 1. Connexion (Login)

**Endpoint :** `POST /api/login`

**Corps de la requête (Body) :**
```json
{
  "email": "fordimalanda@exemple.com",
  "password": "monMotDePasse123"
}