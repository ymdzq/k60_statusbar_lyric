.class public abstract Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances$SelectionTable;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final URI:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances;->LOCK_SCREEN_QUICK_AFFORDANCE_BASE_URI:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 4
    move-result-object v0

    .line 7
    const-string/jumbo v1, "selections"

    .line 8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 15
    move-result-object v0

    .line 18
    sput-object v0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances$SelectionTable;->URI:Landroid/net/Uri;

    .line 19
    return-void
    .line 21
.end method
