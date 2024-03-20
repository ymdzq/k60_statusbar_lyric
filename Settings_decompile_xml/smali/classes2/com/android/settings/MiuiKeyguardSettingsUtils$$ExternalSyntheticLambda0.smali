.class public final synthetic Lcom/android/settings/MiuiKeyguardSettingsUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/MiuiKeyguardSettingsUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/android/settings/MiuiKeyguardSettingsUtils$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/settings/MiuiKeyguardSettingsUtils$$ExternalSyntheticLambda0;->f$0:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/MiuiKeyguardSettingsUtils$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-static {v0, p0, p1, p2}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->$r8$lambda$1xbV6PpGWsl9J1TXT9VMO3mWOwA(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
