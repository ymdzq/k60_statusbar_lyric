.class public final Landroidx/core/provider/CallbackWithHandler$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$callback:Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

.field public final synthetic val$reason:I


# direct methods
.method public constructor <init>(Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$callback:Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

    .line 2
    iput p2, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$reason:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$callback:Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;

    .line 2
    iget p0, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$reason:I

    .line 4
    iget-object v0, v0, Landroidx/core/graphics/TypefaceCompat$ResourcesCallbackAdapter;->mFontCallback:Landroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrievalFailed(I)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method
