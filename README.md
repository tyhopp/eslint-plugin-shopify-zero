# `eslint-plugin-shopify-zero`

> It turns out that because [`@shopify/eslint-plugin`](https://github.com/Shopify/web-configs/tree/5ab0fcff3d25c9f38d871b0d0104305554d86a97/packages/eslint-plugin), the project that this project was forked from, relies on several other plugins like `eslint-plugin-import`, ESLint attempts to `require` those plugins at runtime and can't find them because they aren't listed as dependencies, and so aren't installed.

> In a nutshell, unless all those other plugins are also bundled together and their reference as plugins in each configuration removed, it's not possible for this project to be ported to a single file output with zero dependencies.

> So, do not use this project, it does not work. Install `@shopify/eslint-plugin` instead and try not to think about the extra dependencies that come with it. I'll still put this in a public repo for posterity.

Zero-dependency ESLint plugin for [Shopify's JavaScript style guide](https://github.com/Shopify/javascript).

Includes only React and TypeScript plugins.

## Usage

1. `npm install -D eslint`
2. `npm install -D eslint-plugin-shopify-zero`
3. Extend in `.eslintrc`:

```json
{
  "extends": [
    "plugin:eslint-plugin-shopify-zero/typescript",
    "plugin:eslint-plugin-shopify-zero/react"
  ]
}
```

## Custom rules

This plugin provides the following custom rules:

- [binary-assignment-parens](docs/rules/binary-assignment-parens.md): Require (or disallow) assignments of binary, boolean-producing expressions to be wrapped in parentheses.
- [class-property-semi](docs/rules/class-property-semi.md): Require (or disallow) semicolons for class properties.
- [images-no-direct-imports](docs/rules/images-no-direct-imports.md): Prevent images from being directly imported.
- [jsx-no-complex-expressions](docs/rules/jsx-no-complex-expressions.md): Disallow complex expressions embedded in in JSX.
- [jsx-no-hardcoded-content](docs/rules/jsx-no-hardcoded-content.md): Disallow hardcoded content in JSX.
- [jsx-prefer-fragment-wrappers](docs/rules/jsx-prefer-fragment-wrappers.md): Disallow useless wrapping elements in favour of fragment shorthand in JSX.
- [no-namespace-imports](docs/rules/no-namespace-imports.md): Prevent namespace import declarations.
- [no-useless-computed-properties](docs/rules/no-useless-computed-properties.md): Prevent the usage of unnecessary computed properties.
- [prefer-class-properties](docs/rules/prefer-class-properties.md): Prefer class properties to assignment of literals in constructors.
- [prefer-early-return](docs/rules/prefer-early-return.md): Prefer early returns over full-body conditional wrapping in function declarations.
- [no-ancestor-directory-import](docs/rules/no-ancestor-directory-import.md): Prefer imports from within a directory extend to the file from where they are importing without relying on an index file.
- [prefer-module-scope-constants](docs/rules/prefer-module-scope-constants.md): Prefer that screaming snake case variables always be defined using `const`, and always appear at module scope.
- [react-hooks-strict-return](docs/rules/react-hooks-strict-return.md): Restrict the number of returned items from React hooks.
- [react-initialize-state](docs/rules/react-initialize-state.md): Require that React component state be initialized when it has a non-empty type.
- [react-no-multiple-render-methods](docs/rules/react-no-multiple-render-methods.md): Disallow multiple render methods in React component classes.
- [react-prefer-private-members](docs/rules/react-prefer-private-members.md): Prefer all non-React-specific members be marked private in React class components.
- [react-type-state](docs/rules/react-type-state.md): Require that React component state be typed in TypeScript.
- [restrict-full-import](docs/rules/restrict-full-import.md): Prevent importing the entirety of a package.
- [strict-component-boundaries](docs/rules/strict-component-boundaries.md): Prevent module imports between components.
- [typescript/prefer-pascal-case-enums](docs/rules/typescript/prefer-pascal-case-enums.md): Prefer TypeScript enums be defined using Pascal case.
- [typescript/prefer-singular-enums](docs/rules/typescript/prefer-singular-enums.md): Prefer TypeScript enums be singular.
- [typescript/prefer-build-client-schema](docs/rules/typescript/prefer-build-client-schema.md): Prefer buildClientSchema for schema building.
