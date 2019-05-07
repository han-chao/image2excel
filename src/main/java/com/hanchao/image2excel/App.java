package com.hanchao.image2excel;

import java.awt.image.BufferedImage;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;

import freemarker.template.Configuration;
import freemarker.template.Template;

/**
 * Hello world!
 *
 */
public class App {

	public static String getColorCode(int... rgb) {
		StringBuilder rgbStr = new StringBuilder("#");
		for (int n : rgb) {
			if (n < 16) {
				rgbStr.append("0");
			}
			rgbStr.append(Integer.toHexString(n).toUpperCase());
		}
		return rgbStr.toString();
	}

	public static void main(String[] args) throws Exception {

		File img = new File("images/test.png");
		BufferedImage image = ImageIO.read(img);

		int height = image.getHeight();
		int width = image.getWidth();
		Map<String, String> colors = new HashMap<>();
		List<List<String>> rows = new ArrayList<>(height);
		System.out.println(height);
		System.out.println(width);
		List<String> row;
		String rgb, styleId;
		int step = 1;
		for (int y = 0; y < height; y += step) {
			row = new ArrayList<>(width);
			for (int x = 0; x < width; x += step) {
				int p = image.getRGB(x, y);
//				int a = (p >> 24) & 0xff;
				int red = (p >> 16) & 0xff;
				int green = (p >> 8) & 0xff;
				int blue = p & 0xff;
				rgb=getColorCode(red, green, blue) ;
				styleId = colors.get(rgb);
				if (styleId == null) {
					styleId = "s" + colors.size();
					colors.put(rgb, styleId);
				}
				row.add(styleId);
			}
			rows.add(row);
		}
		System.out.println(colors.size());
		System.out.println(rows.size());

		// 加载模板
		Configuration conf = new Configuration();
		conf.setDefaultEncoding("UTF-8");
		conf.setClassForTemplateLoading(App.class.getClass(), "/");// 模板所在位置

		Template tpl = conf.getTemplate("test.ftl");
		// 替换数据，输出doc
		Writer out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream("test.xlsx")));
		Map<String, Object> dataModel = new HashMap<>();
		dataModel.put("colors", colors);
		dataModel.put("rows", rows);
		dataModel.put("height", 1);
		dataModel.put("width", 1);

		tpl.process(dataModel, out);
		System.out.println("OK");
	}
}
