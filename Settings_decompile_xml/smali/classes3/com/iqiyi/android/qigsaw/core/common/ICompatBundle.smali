.class public interface abstract Lcom/iqiyi/android/qigsaw/core/common/ICompatBundle;
.super Ljava/lang/Object;
.source "ICompatBundle.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# virtual methods
.method public abstract disableComponentInfoManager()Z
.end method

.method public abstract getMD5(Ljava/io/File;)Ljava/lang/String;
.end method

.method public abstract getMD5(Ljava/io/InputStream;)Ljava/lang/String;
.end method

.method public abstract injectActivityResource()Z
.end method

.method public abstract qigsawConfigClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract readDefaultSplitVersionContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method
