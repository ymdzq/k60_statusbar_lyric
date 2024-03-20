.class public interface abstract Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
.super Ljava/lang/Object;
.source "XHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/net/XHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISendDataProcessor"
.end annotation


# virtual methods
.method public abstract getOutDataContentType(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation
.end method

.method public abstract getOutDataLength(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation
.end method

.method public abstract processOutData(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/net/XHttpClient$DataConversionException;
        }
    .end annotation
.end method
