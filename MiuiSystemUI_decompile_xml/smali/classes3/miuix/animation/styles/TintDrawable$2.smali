.class Lmiuix/animation/styles/TintDrawable$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$ref:Lmiuix/animation/styles/TintDrawable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lmiuix/animation/styles/TintDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/animation/styles/TintDrawable$2;->val$view:Landroid/view/View;

    .line 2
    iput-object p2, p0, Lmiuix/animation/styles/TintDrawable$2;->val$ref:Lmiuix/animation/styles/TintDrawable;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/styles/TintDrawable$2;->val$view:Landroid/view/View;

    .line 2
    iget-object p0, p0, Lmiuix/animation/styles/TintDrawable$2;->val$ref:Lmiuix/animation/styles/TintDrawable;

    .line 4
    invoke-virtual {v0, p0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    return-void
    .line 9
.end method
