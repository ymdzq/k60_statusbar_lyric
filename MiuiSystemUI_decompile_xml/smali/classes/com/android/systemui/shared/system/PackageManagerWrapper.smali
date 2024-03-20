.class public final Lcom/android/systemui/shared/system/PackageManagerWrapper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final mIPackageManager:Landroid/content/pm/IPackageManager;

.field public static final sInstance:Lcom/android/systemui/shared/system/PackageManagerWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/shared/system/PackageManagerWrapper;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/shared/system/PackageManagerWrapper;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/shared/system/PackageManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    .line 7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 9
    move-result-object v0

    .line 12
    sput-object v0, Lcom/android/systemui/shared/system/PackageManagerWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 13
    return-void
    .line 15
.end method
