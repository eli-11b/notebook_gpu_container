# Run jupyter notebook with GPU support in Docker
<img src="https://github.com/user-attachments/assets/203e2e67-9dae-4e4d-8648-d4f60f90eefb" height="250">

1. Build Docker image using Dockerfile
```
sudo docker build -t gpu_notebook_container:v1 .
```
2. Run Container, pass in gpu and make sure to use the correct ports that were exposed in the Dockerfile
```
sudo docker run -d --gpus all -p 8888:8888 gpu_notebook_container:v1
```
3. Test by opening browser to serverip:PORT
<img src="https://github.com/user-attachments/assets/2c65ae2d-91b2-4b65-8f32-90e92e33e92a" height="450">

4. Check GPU accessibility
<img src="https://github.com/user-attachments/assets/f1723158-07d1-4b9f-ba92-3b9ad630f34e" height="450">

### DONE! Enjoy!

# Questions?
<br>
<img src="https://github.com/user-attachments/assets/710669b1-49b7-4936-834c-c523781db754"  height="150">

