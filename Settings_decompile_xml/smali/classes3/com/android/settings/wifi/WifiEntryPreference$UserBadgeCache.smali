.class public Lcom/android/settings/wifi/WifiEntryPreference$UserBadgeCache;
.super Ljava/lang/Object;
.source "WifiEntryPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiEntryPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserBadgeCache"
.end annotation


# instance fields
.field private final mBadges:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEntryPreference$UserBadgeCache;->mBadges:Landroid/util/SparseArray;

    .line 439
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEntryPreference$UserBadgeCache;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method
