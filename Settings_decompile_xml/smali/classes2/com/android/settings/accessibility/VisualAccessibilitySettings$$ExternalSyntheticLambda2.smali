.class public final synthetic Lcom/android/settings/accessibility/VisualAccessibilitySettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings$$ExternalSyntheticLambda2;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/accessibility/VisualAccessibilitySettings$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    check-cast p1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-static {v0, p0, p1}, Lcom/android/settings/accessibility/VisualAccessibilitySettings;->$r8$lambda$eXJyTepz3b-VkAObvV20YidB2to(Landroid/content/Context;Ljava/util/List;Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result p0

    return p0
.end method
