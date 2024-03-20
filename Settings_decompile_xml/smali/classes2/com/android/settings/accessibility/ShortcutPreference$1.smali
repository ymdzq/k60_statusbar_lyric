.class Lcom/android/settings/accessibility/ShortcutPreference$1;
.super Ljava/lang/Object;
.source "ShortcutPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/ShortcutPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ShortcutPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ShortcutPreference;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/settings/accessibility/ShortcutPreference$1;->this$0:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 114
    new-instance v0, Lcom/android/settings/accessibility/ShortcutPreference$1$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/accessibility/ShortcutPreference$1$1;-><init>(Lcom/android/settings/accessibility/ShortcutPreference$1;Z)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
