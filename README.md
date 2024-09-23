# Flutter Task

## Overview
This project implements a Flutter application that displays a list of products using the [Fake Store API](https://fakestoreapi.com/products). The application follows best practices in terms of design quality, naming conventions, and commit messages.

## Features
- Displays a list of products in a ListView.
- Implements architecture using Cubit with `flutter_bloc`.
- Utilizes the Repository Pattern for data management.
- Incorporates Dependency Injection using [get_it](https://pub.dev/packages/get_it).
- Fetches data using [`dio`](https://pub.dev/packages/dio) for network requests.
- Caches images using [`cached_network_image`](https://pub.dev/packages/cached_network_image).
- Utilizes [`dartz`](https://pub.dev/packages/dartz) for functional programming constructs.

## API
The application fetches data from the following endpoint:
- [Products API](https://fakestoreapi.com/products)


## Screenshots
![Screenshot 1](https://github.com/user-attachments/assets/d1ddabde-7741-48d6-81da-7bffcab976c0)
![Screenshot 2](https://github.com/user-attachments/assets/e8fe77e5-b87f-4ee3-a15a-5e90a2df2822)
![Screenshot 3](https://github.com/user-attachments/assets/a2412517-fa19-4636-8ca6-198916b19e92)
![Screenshot 4](https://github.com/user-attachments/assets/75cdacb1-fe06-47fd-8147-8eeb4a9688d9)


## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/mohamedzewin01/FlutterTaskMohamed.git
