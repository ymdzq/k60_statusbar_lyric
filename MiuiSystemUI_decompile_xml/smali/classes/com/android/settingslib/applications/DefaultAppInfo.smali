.class public abstract Lcom/android/settingslib/applications/DefaultAppInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final componentName:Landroid/content/ComponentName;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final userId:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/settingslib/applications/DefaultAppInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 5
    iput p2, p0, Lcom/android/settingslib/applications/DefaultAppInfo;->userId:I

    .line 7
    iput-object p3, p0, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 9
    return-void
    .line 11
.end method
