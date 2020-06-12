module.exports = {
    // Node
    // npx install-peerdeps --dev eslint-config-airbnb-base
    // yad prettier eslint eslint-config-prettier eslint-plugin-prettier eslint-config-node eslint-plugin-node eslint-config-airbnb eslint-config-airbnb-base eslint-plugin-import
    // Add to package.json:
    // "engines": {
    //      "node": ">=12.0.0"
    //  },
    extends: ['airbnb', 'eslint:recommended', 'plugin:node/recommended', 'prettier'],
    plugins: ['prettier'],
    env: {
        commonjs: true,
        node: true,
        es6: true,
    },
    parserOptions: {
        ecmaVersion: 2018,
    },

    // React
    // npx install-peerdeps --dev eslint-config-airbnb
    // yad prettier eslint eslint-config-prettier eslint-plugin-prettier eslint-config-node eslint-plugin-node eslint-plugin-react eslint-plugin-react-hooks eslint-plugin-jsx-a11y eslint-plugin-import eslint-config-airbnb
    extends: ['airbnb', 'airbnb/hooks', 'prettier/react', 'prettier'],
    plugins: ['prettier'],
    parser: 'babel-eslint',
    parserOptions: {
        ecmaFeatures: {
            jsx: true,
        },
        sourceType: 'module',
        ecmaVersion: 2018,
    },
    env: {
        browser: true,
        es6: true,
        node: true,
    },
    rules: {
        // Common Rules
        'prettier/prettier': 0,
        'consistent-return': 0,
        'func-names': 0,
        'no-shadow': 0,
        'import/no-unresolved': 0,
        'no-nested-ternary': 0,
        camelcase: 0,
        'no-underscore-dangle': 0,
        'no-console': [2, { allow: ['warn', 'error'] }],
        'no-use-before-define': 0,

        // React Rules
        'react/jsx-filename-extension': [2, { extensions: ['.js', '.jsx'] }],
        'react/no-unescaped-entities': ['error', { forbid: ['>', '"', '}'] }],
        'react/state-in-constructor': 0,
        'react/prop-types': [2, { skipUndeclared: true }],
        'jsx-a11y/no-static-element-interactions': 0,
        'jsx-a11y/click-events-have-key-events': 0,
        'import/prefer-default-export': 0,
        'react/forbid-prop-types': 0,
        'react/jsx-props-no-spreading': 0,

        // Node Rules
        'prefer-destructuring': [2, { object: true, array: false }],
        'no-unused-vars': [2, { argsIgnorePattern: 'req|res|next|val' }],
    },
};
