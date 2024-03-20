.class public Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$DisplayAreaContext;
.super Landroid/content/ContextWrapper;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mResourcesManager:Landroid/app/ResourcesManager;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Landroid/os/Binder;

    .line 6
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$DisplayAreaContext;->mToken:Landroid/os/IBinder;

    .line 11
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    .line 13
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer$DisplayAreaContext;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 17
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->createTokenContext(Landroid/os/IBinder;Landroid/view/Display;)Landroid/content/Context;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 23
    return-void
    .line 26
.end method
