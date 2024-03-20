.class public final Lcom/android/systemui/screenshot/WorkProfileMessageController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final context:Landroid/content/Context;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final userManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/screenshot/WorkProfileMessageController;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/screenshot/WorkProfileMessageController;->userManager:Landroid/os/UserManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/screenshot/WorkProfileMessageController;->packageManager:Landroid/content/pm/PackageManager;

    .line 9
    return-void
    .line 11
.end method
