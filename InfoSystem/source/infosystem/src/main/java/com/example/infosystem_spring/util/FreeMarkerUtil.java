package com.example.infosystem_spring.util;

import freemarker.cache.StringTemplateLoader;
import freemarker.template.Configuration;
import freemarker.template.Template;

import java.io.StringWriter;
import java.util.HashMap;
import java.util.Map;

public class FreeMarkerUtil {
    public String createHtmlFromString(String templateContent, String data) throws Exception {
        Configuration cfg = new Configuration();
        StringTemplateLoader stringLoader = new StringTemplateLoader();
        stringLoader.putTemplate("myTemplate", templateContent);
        cfg.setTemplateLoader(stringLoader);
        Template template = cfg.getTemplate("myTemplate", "utf-8");
        Map root = new HashMap();
        root.put("data", data);

        StringWriter writer = new StringWriter();
        template.process(root, writer);
        return writer.toString();
    }
}
