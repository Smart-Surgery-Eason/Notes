# JQuery Basic
## Quick Start
1. Run
```pwsh
python -m http.server -d lab\jquery-basics-01\
```
2. Open [this link](http://localhost:8000).
3. Click the `Click Me!` button.
4. Check if the message change to `Hello, World!`

## Tutorial
1. Open [index.html][index-html].
2. Include JQuery:
```html
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
```
3. Use this template:
```html
    <div class="msg-class-name"><span>msg:</span><span class="childs-class-name"></span></div>
    <button class="btn-class-name">click me!</button>
```
```javascript
    $(".btn-class-name").click(function(){
        $(".msg-class-name .childs-class-name").html("Hello, World!")
    })
```
Notice that in `$(query_string)` the `query_string` follow the css rules.
We can use `.click` and `.html` to manipulate the value of the **html element**s.

## Future Work
- Find the type of \$
- Find the return type of \$()
- Find the important methods of \$()

## Reference
[index.html][index-html]

[index-html]: index.html