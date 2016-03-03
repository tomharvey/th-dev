# sublime-text-cookbook

Cookbook for installing Sublime Text

## Supported Platforms

* Ubuntu 14.04
* OS X

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td>node['sublime-text']['version']['generation']</td>
    <td>integer</td>
    <td>The generation of Sublime Text to install. Currently supports 2 and 3</td>
    <td>2</td>
  </tr>
  <tr>
    <td>node['sublime-text']['version']['id']</td>
    <td>string</td>
    <td>The version id of Sublime Text to install.  For Sublime Text 2, this will be a version number, and for Sublime Text 3 this will be a build number.  An appropriate default will be selected for each generation.</td>
    <td>'2.0.2' (2) or 'Build 3065' (3)</td>
  </tr>
  <tr>
    <td>node['sublime-text']['platform']['release']</td>
    <td>string</td>
    <td>The release of ubuntu being installed to (if applicable)</td>
    <td>'trusty'</td>
  </tr>
  <tr>
    <td>node['sublime-text']['platform']['architecture']</td>
    <td>string</td>
    <td>The hardware architecture</td>
    <td>'amd64'</td>
  </tr>
</table>

## Usage

### sublime-text::default

Include `sublime-text` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[sublime-text]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

License: MIT

* Patrick Ayoup (patrick.ayoup@gmail.com)
* 0x783czar (Github)
* obazoud (Github)

