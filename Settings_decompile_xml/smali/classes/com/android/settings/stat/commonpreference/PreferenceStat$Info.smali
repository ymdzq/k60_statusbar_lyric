.class public Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;
.super Ljava/lang/Object;
.source "PreferenceStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/stat/commonpreference/PreferenceStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Info"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/stat/commonpreference/PreferenceStat;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/stat/commonpreference/PreferenceStat;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;->this$0:Lcom/android/settings/stat/commonpreference/PreferenceStat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;->key:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;->value:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/stat/commonpreference/PreferenceStat;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;->this$0:Lcom/android/settings/stat/commonpreference/PreferenceStat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p2, p0, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;->key:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/android/settings/stat/commonpreference/PreferenceStat$Info;->value:Ljava/lang/String;

    return-void
.end method
