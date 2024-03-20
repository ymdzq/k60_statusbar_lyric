.class public final synthetic Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->screenShot()V

    return-void
.end method
