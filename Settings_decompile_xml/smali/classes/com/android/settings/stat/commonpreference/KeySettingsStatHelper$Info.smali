.class public Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;
.super Ljava/lang/Object;
.source "KeySettingsStatHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;->key:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;->key:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/settings/stat/commonpreference/KeySettingsStatHelper$Info;->value:Ljava/lang/String;

    return-void
.end method
