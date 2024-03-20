.class public final synthetic Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$1;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$1;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$1;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$1$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$1$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    .line 4
    check-cast p1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {p1}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->getAccessibilityServiceFragmentType(Landroid/accessibilityservice/AccessibilityServiceInfo;)I

    .line 11
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 19
    move-result-object p1

    .line 22
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 23
    move-result p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    goto :goto_0

    .line 29
    :cond_1
    iget-object p0, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$1;->this$0:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer;

    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 32
    move-result-object p0

    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-static {p0, p1, v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 37
    :goto_0
    return-void
    .line 40
.end method
