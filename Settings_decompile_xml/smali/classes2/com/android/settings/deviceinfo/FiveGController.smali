.class public Lcom/android/settings/deviceinfo/FiveGController;
.super Ljava/lang/Object;
.source "FiveGController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FiveGController"

.field private static sFiveGController:Lcom/android/settings/deviceinfo/FiveGController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/deviceinfo/FiveGController;
    .locals 2

    .line 12
    sget-object v0, Lcom/android/settings/deviceinfo/FiveGController;->TAG:Ljava/lang/String;

    const-string v1, "FiveGController getInstance"

    invoke-static {v0, v1}, Lmiuix/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/android/settings/deviceinfo/FiveGController;->sFiveGController:Lcom/android/settings/deviceinfo/FiveGController;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/android/settings/deviceinfo/FiveGController;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/FiveGController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/deviceinfo/FiveGController;->sFiveGController:Lcom/android/settings/deviceinfo/FiveGController;

    .line 16
    :cond_0
    sget-object p0, Lcom/android/settings/deviceinfo/FiveGController;->sFiveGController:Lcom/android/settings/deviceinfo/FiveGController;

    return-object p0
.end method


# virtual methods
.method public isFiveGConnect(II)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 0

    .line 0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 0
    return-void
.end method
