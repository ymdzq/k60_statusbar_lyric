.class Lcom/android/settings/MiuiGxzwQuickOpenFragment$1;
.super Ljava/lang/Object;
.source "MiuiGxzwQuickOpenFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiGxzwQuickOpenFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiGxzwQuickOpenFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiGxzwQuickOpenFragment;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/android/settings/MiuiGxzwQuickOpenFragment$1;->this$0:Lcom/android/settings/MiuiGxzwQuickOpenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 33
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 34
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwQuickOpenFragment$1;->this$0:Lcom/android/settings/MiuiGxzwQuickOpenFragment;

    invoke-static {p0, p1}, Lcom/android/settings/MiuiGxzwQuickOpenFragment;->-$$Nest$msetQuickOpenEnable(Lcom/android/settings/MiuiGxzwQuickOpenFragment;Z)V

    const/4 p0, 0x1

    return p0
.end method
