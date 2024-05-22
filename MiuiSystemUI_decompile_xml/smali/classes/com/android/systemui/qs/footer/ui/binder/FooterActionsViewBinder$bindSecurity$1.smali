.class public final Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindSecurity$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $onClick:Lkotlin/jvm/functions/Function2;

.field public final synthetic $quickSettingsContext:Landroid/content/Context;

.field public final synthetic $securityView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindSecurity$1;->$onClick:Lkotlin/jvm/functions/Function2;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindSecurity$1;->$quickSettingsContext:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindSecurity$1;->$securityView:Landroid/view/View;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindSecurity$1;->$onClick:Lkotlin/jvm/functions/Function2;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindSecurity$1;->$quickSettingsContext:Landroid/content/Context;

    .line 4
    sget v1, Lcom/android/systemui/animation/Expandable;->$r8$clinit:I

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/footer/ui/binder/FooterActionsViewBinder$bindSecurity$1;->$securityView:Landroid/view/View;

    .line 8
    new-instance v1, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    .line 10
    invoke-direct {v1, p0}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;-><init>(Landroid/view/View;)V

    .line 12
    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
    .line 18
.end method
