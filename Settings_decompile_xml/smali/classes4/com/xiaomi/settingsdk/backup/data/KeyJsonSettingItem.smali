.class public Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;
.super Lcom/xiaomi/settingsdk/backup/data/SettingItem;
.source "KeyJsonSettingItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/settingsdk/backup/data/SettingItem<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "json"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected getJsonValue()Ljava/lang/Object;
    .locals 1

    .line 10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getType()Ljava/lang/String;
    .locals 1

    .line 11
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected setValueFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .line 9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected bridge synthetic stringToValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;->stringToValue(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method protected stringToValue(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected bridge synthetic valueToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 3
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/xiaomi/settingsdk/backup/data/KeyJsonSettingItem;->valueToString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected valueToString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
