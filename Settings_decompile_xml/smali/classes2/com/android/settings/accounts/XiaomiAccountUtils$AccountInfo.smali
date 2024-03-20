.class Lcom/android/settings/accounts/XiaomiAccountUtils$AccountInfo;
.super Ljava/lang/Object;
.source "XiaomiAccountUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/XiaomiAccountUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountInfo"
.end annotation


# instance fields
.field public mAccountAvator:Landroid/graphics/Bitmap;

.field public mAccountName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/accounts/XiaomiAccountUtils;


# direct methods
.method private constructor <init>(Lcom/android/settings/accounts/XiaomiAccountUtils;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/android/settings/accounts/XiaomiAccountUtils$AccountInfo;->this$0:Lcom/android/settings/accounts/XiaomiAccountUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accounts/XiaomiAccountUtils;Lcom/android/settings/accounts/XiaomiAccountUtils$AccountInfo-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/XiaomiAccountUtils$AccountInfo;-><init>(Lcom/android/settings/accounts/XiaomiAccountUtils;)V

    return-void
.end method
