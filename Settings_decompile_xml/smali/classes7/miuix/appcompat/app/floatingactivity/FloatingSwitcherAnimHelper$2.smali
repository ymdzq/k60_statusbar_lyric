.class Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$2;
.super Ljava/lang/Object;
.source "FloatingSwitcherAnimHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->executeOpenEnterAnimation(Landroid/view/View;Lmiuix/animation/base/AnimConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$config:Lmiuix/animation/base/AnimConfig;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$2;->val$view:Landroid/view/View;

    iput-object p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$2;->val$config:Lmiuix/animation/base/AnimConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 90
    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$2;->val$view:Landroid/view/View;

    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper$2;->val$config:Lmiuix/animation/base/AnimConfig;

    invoke-static {v0, p0}, Lmiuix/appcompat/app/floatingactivity/FloatingSwitcherAnimHelper;->access$000(Landroid/view/View;Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method
