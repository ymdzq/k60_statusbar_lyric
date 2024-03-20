.class Lcom/android/settings/accessibility/ShortcutPreference$1$1;
.super Ljava/lang/Object;
.source "ShortcutPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ShortcutPreference$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/accessibility/ShortcutPreference$1;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ShortcutPreference$1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/android/settings/accessibility/ShortcutPreference$1$1;->this$1:Lcom/android/settings/accessibility/ShortcutPreference$1;

    iput-boolean p2, p0, Lcom/android/settings/accessibility/ShortcutPreference$1$1;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 117
    iget-boolean v0, p0, Lcom/android/settings/accessibility/ShortcutPreference$1$1;->val$isChecked:Z

    iget-object v1, p0, Lcom/android/settings/accessibility/ShortcutPreference$1$1;->this$1:Lcom/android/settings/accessibility/ShortcutPreference$1;

    iget-object v1, v1, Lcom/android/settings/accessibility/ShortcutPreference$1;->this$0:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-static {v1}, Lcom/android/settings/accessibility/ShortcutPreference;->-$$Nest$fgetmChecked(Lcom/android/settings/accessibility/ShortcutPreference;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 118
    iget-object p0, p0, Lcom/android/settings/accessibility/ShortcutPreference$1$1;->this$1:Lcom/android/settings/accessibility/ShortcutPreference$1;

    iget-object p0, p0, Lcom/android/settings/accessibility/ShortcutPreference$1;->this$0:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-static {p0}, Lcom/android/settings/accessibility/ShortcutPreference;->-$$Nest$mcallOnToggleClicked(Lcom/android/settings/accessibility/ShortcutPreference;)V

    :cond_0
    return-void
.end method
