.class public final synthetic Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle$$ExternalSyntheticLambda0;->f$0:Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mExpandTitleLayout:Landroid/widget/LinearLayout;

    .line 4
    iget-object p0, p0, Lmiuix/appcompat/internal/app/widget/actionbar/ExpandTitle;->mContext:Landroid/content/Context;

    .line 6
    const v1, 0x101039c    # @android:attr/actionBarItemBackground

    .line 8
    invoke-static {v1, p0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    return-void
    .line 18
.end method
