# docker build -t grobid/grobid:0.8.0 --build-arg GROBID_VERSION=0.8.0 --file Dockerfile.delft .
# docker run --init --ulimit core=8 -p 8070:8070 -p 8081:8071 grobid/grobid:0.8.0

# /usr/lib/jvm/java-17-openjdk-amd64//bin/java                                                                              \
#     -Xmx64m                                                                                                               \
#     -Xms64m                                                                                                               \
#     -Dorg.gradle.appname=gradlew                                                                                          \
#     -classpath /home/mjhouse/Projects/symby/grobid/gradle/wrapper/gradle-wrapper.jar org.gradle.wrapper.GradleWrapperMain \
#     clean                                                                                                                 \
#     install;

# curl                                       \
#     -X POST                                \
#     -H 'Content-Type: multipart/form-data' \
#     -F input="@deepuda.pdf"                \
#     localhost:8070/api/processFulltextDocument;

curl                                                                                             \
    -X POST                                                                                      \
    -H 'Content-Type: multipart/form-data'                                                       \
    -F uploadFileURL=https://storage.googleapis.com/symby_test_bucket/pdf_articles/deepuda.pdf   \
    localhost:8070/api/processFulltextDocument;