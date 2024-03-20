.class public final Landroidx/slice/compat/CompatPermissionManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAutoGrantPermissions:[Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mMyUid:I

.field public final mPrefsLock:Ljava/lang/Object;

.field public final mPrefsName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/slice/compat/CompatPermissionManager;->mPrefsLock:Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Landroidx/slice/compat/CompatPermissionManager;->mContext:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Landroidx/slice/compat/CompatPermissionManager;->mPrefsName:Ljava/lang/String;

    .line 14
    iput p3, p0, Landroidx/slice/compat/CompatPermissionManager;->mMyUid:I

    .line 16
    iput-object p4, p0, Landroidx/slice/compat/CompatPermissionManager;->mAutoGrantPermissions:[Ljava/lang/String;

    .line 18
    return-void
    .line 20
.end method
