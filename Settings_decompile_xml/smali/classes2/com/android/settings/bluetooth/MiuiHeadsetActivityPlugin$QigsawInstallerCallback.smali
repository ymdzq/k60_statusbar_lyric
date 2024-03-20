.class public interface abstract Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;
.super Ljava/lang/Object;
.source "MiuiHeadsetActivityPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QigsawInstallerCallback"
.end annotation


# virtual methods
.method public abstract onQigsawCanceled()V
.end method

.method public abstract onQigsawInstalled(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
