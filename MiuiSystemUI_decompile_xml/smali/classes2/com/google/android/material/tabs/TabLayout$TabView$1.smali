.class public final Lcom/google/android/material/tabs/TabLayout$TabView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$1:Lcom/google/android/material/tabs/TabLayout$TabView;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView$1;->this$1:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 2
    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout$TabView$1;->val$view:Landroid/view/View;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView$1;->val$view:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 4
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView$1;->this$1:Lcom/google/android/material/tabs/TabLayout$TabView;

    .line 10
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView$1;->val$view:Landroid/view/View;

    .line 12
    sget p2, Lcom/google/android/material/tabs/TabLayout$TabView;->$r8$clinit:I

    .line 14
    invoke-virtual {p1, p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->tryUpdateBadgeDrawableBounds(Landroid/view/View;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method
