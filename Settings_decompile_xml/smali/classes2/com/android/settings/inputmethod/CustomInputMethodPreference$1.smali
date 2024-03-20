.class Lcom/android/settings/inputmethod/CustomInputMethodPreference$1;
.super Ljava/lang/Object;
.source "CustomInputMethodPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/CustomInputMethodPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/CustomInputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/CustomInputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/settings/inputmethod/CustomInputMethodPreference$1;->this$0:Lcom/android/settings/inputmethod/CustomInputMethodPreference;

    invoke-static {p0}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->-$$Nest$fgetmImi(Lcom/android/settings/inputmethod/CustomInputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/CustomInputMethodPreference;->jumpToInputMethodSettings(Landroid/view/inputmethod/InputMethodInfo;)V

    return-void
.end method
