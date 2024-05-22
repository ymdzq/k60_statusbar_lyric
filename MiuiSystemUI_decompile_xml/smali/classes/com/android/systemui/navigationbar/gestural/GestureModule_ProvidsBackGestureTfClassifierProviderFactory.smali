.class public abstract Lcom/android/systemui/navigationbar/gestural/GestureModule_ProvidsBackGestureTfClassifierProviderFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static providsBackGestureTfClassifierProvider()Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;-><init>()V

    .line 4
    return-object v0
    .line 7
.end method
