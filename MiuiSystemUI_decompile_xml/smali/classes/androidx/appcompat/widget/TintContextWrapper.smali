.class public abstract Landroidx/appcompat/widget/TintContextWrapper;
.super Landroid/content/ContextWrapper;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CACHE_LOCK:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    sput-object v0, Landroidx/appcompat/widget/TintContextWrapper;->CACHE_LOCK:Ljava/lang/Object;

    .line 7
    return-void
    .line 9
.end method

.method public static wrap(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroidx/appcompat/widget/TintResources;

    .line 6
    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    sget p0, Landroidx/appcompat/widget/VectorEnabledTintResources;->$r8$clinit:I

    .line 13
    :cond_0
    return-void
    .line 15
.end method
