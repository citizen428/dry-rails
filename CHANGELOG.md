## unreleased 

Initial port of dry-system-rails with a couple of new features

### Added

- Railtie features are handled by `:rails` system component provider, which uses standard bootable components to manage application state (@solnic)
- Support for `ApplicationContract` which is automatically defined within the application namespace and configured to work with `I18n` (@solnic)
- `:namespaced` auto-register strategy which supports loading components from the typical Rails directory structure but with the assumption that they are properly namespaced, ie: `app/services/github.rb` => `YourApp::Services::Github` (@solnic)
- `:safe_params` feature which extends `ApplicationController` with `schema` DSL and exposes `safe_params` controller helper (@solnic)


[Compare vunreleased...master](https://github.com/dry-rb/dry-rails/compare/vunreleased...master)

## unreleased 

Initial port of dry-system-rails with a couple of new features

### Added

- Railtie features are handled by `:rails` system component provider, which uses standard bootable components to manage application state (@solnic)
- Support for `ApplicationContract` which is automatically defined within the application namespace and configured to work with `I18n` (@solnic)
- `:namespaced` auto-register strategy which supports loading components from the typical Rails directory structure but with the assumption that they are properly namespaced, ie: `app/services/github.rb` => `YourApp::Services::Github` (@solnic)
- `:safe_params` feature which extends `ApplicationController` with `schema` DSL and exposes `safe_params` controller helper (@solnic)
