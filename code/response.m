function response(out) 
    import com.google.gson.*;
    data = rand(10000,2);
    gson = Gson;
    message = gson.toJson(data);

    out.println('HTTP/1.0 200 OK');
    out.println('Content-Type: text/json');
    out.printf('Content-Length: %d%n',int32(length(message)));
    out.println('Access-Control-Allow-Origin: *');
    out.println();
    out.println(message);
    out.flush();
end