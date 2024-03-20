.class Lcom/android/settings/ai/AiSettingsSubAdapter$1;
.super Ljava/lang/Object;
.source "AiSettingsSubAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ai/AiSettingsSubAdapter;->handleSelect(Lcom/android/settings/ai/AiSettingsItem;Lcom/android/settings/ai/AiSettingsSubAdapter$ItemHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ai/AiSettingsSubAdapter;

.field final synthetic val$item:Lcom/android/settings/ai/AiSettingsItem;


# direct methods
.method constructor <init>(Lcom/android/settings/ai/AiSettingsSubAdapter;Lcom/android/settings/ai/AiSettingsItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/android/settings/ai/AiSettingsSubAdapter$1;->this$0:Lcom/android/settings/ai/AiSettingsSubAdapter;

    iput-object p2, p0, Lcom/android/settings/ai/AiSettingsSubAdapter$1;->val$item:Lcom/android/settings/ai/AiSettingsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 59
    iget-object p1, p0, Lcom/android/settings/ai/AiSettingsSubAdapter$1;->this$0:Lcom/android/settings/ai/AiSettingsSubAdapter;

    invoke-static {p1}, Lcom/android/settings/ai/AiSettingsSubAdapter;->-$$Nest$fgetmData(Lcom/android/settings/ai/AiSettingsSubAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ai/AiSettingsItem;

    const/4 v1, 0x0

    .line 60
    iput-boolean v1, v0, Lcom/android/settings/ai/AiSettingsItem;->selected:Z

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ai/AiSettingsSubAdapter$1;->val$item:Lcom/android/settings/ai/AiSettingsItem;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/ai/AiSettingsItem;->selected:Z

    .line 63
    iget-object p1, p0, Lcom/android/settings/ai/AiSettingsSubAdapter$1;->this$0:Lcom/android/settings/ai/AiSettingsSubAdapter;

    invoke-static {p1}, Lcom/android/settings/ai/AiSettingsSubAdapter;->-$$Nest$fgetmContext(Lcom/android/settings/ai/AiSettingsSubAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ai/AiSettingsSubAdapter$1;->this$0:Lcom/android/settings/ai/AiSettingsSubAdapter;

    invoke-static {v0}, Lcom/android/settings/ai/AiSettingsSubAdapter;->-$$Nest$fgetmButtonType(Lcom/android/settings/ai/AiSettingsSubAdapter;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ai/AiSettingsSubAdapter$1;->val$item:Lcom/android/settings/ai/AiSettingsItem;

    invoke-static {p1, v0, v1}, Lcom/android/settings/ai/PreferenceHelper$AiSettingsPreferenceHelper;->setPressAiButtonSettings(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/ai/AiSettingsItem;)V

    .line 64
    iget-object p0, p0, Lcom/android/settings/ai/AiSettingsSubAdapter$1;->this$0:Lcom/android/settings/ai/AiSettingsSubAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
