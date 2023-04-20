# cat-facts

A full fledged flutter template with support for state management, multi language / theme configuration, caching and layouts for multiple screen sizes.

## File Structure

- assets
    - images `(image assets)`
    - animations `(animations files such as lottie files)`

- lib
    - components
        - common
            - core  `(core components)`
            - .... `(common components which can be shared between modules)`
        - .... `(module-wise separated components)`

    - config
        - themes `(theme definitions)`
        - secrets.dart `(application secret definitions)`
    - l10n `(translation files)`
    - routes `(routes files)`
    - screens `(primary application screens)`
    - services 
        - core `(common services and server connection instances)`
        - .... `(data-wise separated services and their models)`
    - state 
        - data `(bloc for managing application data)`
        - ui `(bloc for managing application UI elements)`
    - types `(custom type definitions)`
    - utils `(utility files)`

- analysis_options.yaml `(lint rules)`

<br/>

## Managing secrets

- Application secrets will be automatically read from a .env file at the root of the application. These will ideally be compile time variables. For more information, refer the [following article](https://thiele.dev/blog/part-1-configure-a-flutter-app-with-dart-define-environment-variable/#:~:text=What%20does%20dart-define%20do,is%3A%20--dart-define%20!)

