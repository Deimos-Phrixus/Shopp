# Shopp
To update one container: docker-compose up --build containerName

The mounted directories(cert, database, public_html and tmp) are persistent. If updated in the real computer, the new version will be the one seen by the containers. So, no need to rebuild or anything for this.

To do:

- Add SSL certificate
- Fix site redirecting: when going to "localhost" on brower "File not found" appears, but "localhost/index.html" works fine.
