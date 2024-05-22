.class public abstract Lcom/miui/systemui/modulesettings/DeveloperSettings;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final URI_GAME_MODE:Landroid/net/Uri;

.field public static final URI_MIUI_MIRROR_DND_MODE:Landroid/net/Uri;

.field public static final URI_MIUI_OPTIMIZATION:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "miui_optimization"

    .line 2
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    move-result-object v0

    .line 7
    sput-object v0, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_MIUI_OPTIMIZATION:Landroid/net/Uri;

    .line 8
    const-string v0, "miui_mirror_dnd_mode"

    .line 10
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object v0

    .line 15
    sput-object v0, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_MIUI_MIRROR_DND_MODE:Landroid/net/Uri;

    .line 16
    const-string v0, "gb_notification"

    .line 18
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    move-result-object v0

    .line 23
    sput-object v0, Lcom/miui/systemui/modulesettings/DeveloperSettings;->URI_GAME_MODE:Landroid/net/Uri;

    .line 24
    return-void
    .line 26
.end method
