/*
 * ${NAME}.java
 * SAUNIER DEBES Brice
 * ${DATE}
 */
 
#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end
import org.junit.Test;
#parse("File Header.java")
@RunWith(HierarchicalContextRunner.class)
public class ${NAME} {
  @Test
  public void nothing() throws Exception {
  
  }
}