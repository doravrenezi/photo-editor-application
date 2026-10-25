# Publish on GitHub

Use this guide to publish your own copy of the project with three meaningful commits.

## Repository presentation

Repository name: `photo-editor-application`

Suggested description:

> Interactive Processing photo editor with exposure, saturation, contrast, and PNG export.

Suggested topics: `processing`, `java`, `photo-editor`, `image-processing`, `creative-coding`.

The root README appears on the repository's main page. An optional finishing touch is an actual screenshot of the running editor: save it as `docs/editor.png` and embed it beneath the README introduction with `![Photo editor interface](docs/editor.png)`.

Before publishing, confirm the sample photo credits and permission to share them. Choose a code license if you want to grant reuse rights, and add it as a root `LICENSE` file. Keep the bundled font's existing license notice.

## Upload with Git: three meaningful commits

Open Terminal and enter the project folder:

```sh
cd /path/to/photo_editor_application
```

Initialize the repository (skip this command if it is already initialized):

```sh
git init -b main
```

Set the author identity for this repository. Replace the example values with your name and an email associated with your GitHub account. You can copy your GitHub-provided no-reply address from [GitHub email settings](https://github.com/settings/emails) if you prefer to keep your personal address private.

```sh
git config user.name "YOUR NAME"
git config user.email "YOUR GITHUB EMAIL"
```

Create three commits, each containing a distinct part of the project:

```sh
git add photo_editor_application.pde edit_image.pde effects.pde select_image.pde shapes.pde top_buttons.pde sketch.properties
git commit -m "Add interactive Processing photo editor"

git add data/
git commit -m "Add sample photographs and licensed Questrial font"

git add README.md docs/ .gitignore
git commit -m "Document setup, controls, testing, and publishing"
```

Check the result:

```sh
git log --oneline
git status
```

Expect three commits and a clean working tree. The old duplicate main tab is preserved in `.local-backups/`, which is ignored. Generated exports and OS metadata are also ignored.

All three commits can be uploaded in one push and will remain separate in the repository history. These record three parts of the initial import; they do not represent work on three different days. For profile contribution credit, use an email linked to your GitHub account and push to the repository's default branch. See [GitHub's contribution criteria](https://docs.github.com/en/account-and-profile/reference/profile-contributions-reference).

On GitHub, create a new empty repository named `photo-editor-application`. Leave GitHub's automatic README, license, and `.gitignore` options unchecked so the remote starts empty.

Copy the repository's HTTPS URL from GitHub. Replace `YOUR_USERNAME` below with your account name, then run:

```sh
git remote add origin https://github.com/YOUR_USERNAME/photo-editor-application.git
git push -u origin main
```

GitHub may prompt you to authenticate. After pushing, add the description and topics in the repository's **About** settings, and check that the README displays correctly.

For a visitor check, download the repository ZIP to a separate folder, rename the extracted folder to `photo_editor_application`, and follow the README run instructions.

Reference: [GitHub's guide to adding locally hosted code](https://docs.github.com/en/migrations/importing-source-code/using-the-command-line-to-import-source-code/adding-locally-hosted-code-to-github).
