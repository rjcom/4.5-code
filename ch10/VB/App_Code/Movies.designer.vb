﻿'------------------------------------------------------------------------------
' <auto-generated>
'     This code was generated by a tool.
'     Runtime Version:4.0.30319.18010
'
'     Changes to this file may cause incorrect behavior and will be lost if
'     the code is regenerated.
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict On
Option Explicit On

Imports System
Imports System.Collections.Generic
Imports System.ComponentModel
Imports System.Data
Imports System.Data.Linq
Imports System.Data.Linq.Mapping
Imports System.Linq
Imports System.Linq.Expressions
Imports System.Reflection


<Global.System.Data.Linq.Mapping.DatabaseAttribute(Name:="Movies")>  _
Partial Public Class MoviesDataContext
	Inherits System.Data.Linq.DataContext
	
	Private Shared mappingSource As System.Data.Linq.Mapping.MappingSource = New AttributeMappingSource()
	
  #Region "Extensibility Method Definitions"
  Partial Private Sub OnCreated()
  End Sub
  Partial Private Sub InsertMovie(instance As Movie)
    End Sub
  Partial Private Sub UpdateMovie(instance As Movie)
    End Sub
  Partial Private Sub DeleteMovie(instance As Movie)
    End Sub
  Partial Private Sub InsertGenre(instance As Genre)
    End Sub
  Partial Private Sub UpdateGenre(instance As Genre)
    End Sub
  Partial Private Sub DeleteGenre(instance As Genre)
    End Sub
  #End Region
	
	Public Sub New()
		MyBase.New(Global.System.Configuration.ConfigurationManager.ConnectionStrings("MoviesConnectionString").ConnectionString, mappingSource)
		OnCreated
	End Sub
	
	Public Sub New(ByVal connection As String)
		MyBase.New(connection, mappingSource)
		OnCreated
	End Sub
	
	Public Sub New(ByVal connection As System.Data.IDbConnection)
		MyBase.New(connection, mappingSource)
		OnCreated
	End Sub
	
	Public Sub New(ByVal connection As String, ByVal mappingSource As System.Data.Linq.Mapping.MappingSource)
		MyBase.New(connection, mappingSource)
		OnCreated
	End Sub
	
	Public Sub New(ByVal connection As System.Data.IDbConnection, ByVal mappingSource As System.Data.Linq.Mapping.MappingSource)
		MyBase.New(connection, mappingSource)
		OnCreated
	End Sub
	
	Public ReadOnly Property Movies() As System.Data.Linq.Table(Of Movie)
		Get
			Return Me.GetTable(Of Movie)
		End Get
	End Property
	
	Public ReadOnly Property Genres() As System.Data.Linq.Table(Of Genre)
		Get
			Return Me.GetTable(Of Genre)
		End Get
	End Property
	
	Public ReadOnly Property AllMovies() As System.Data.Linq.Table(Of AllMovies)
		Get
			Return Me.GetTable(Of AllMovies)
		End Get
	End Property
	
	<Global.System.Data.Linq.Mapping.FunctionAttribute(Name:="dbo.GetGenre")>  _
	Public Function GetGenre(<Global.System.Data.Linq.Mapping.ParameterAttribute(DbType:="Int")> ByVal id As System.Nullable(Of Integer)) As ISingleResult(Of Genre)
		Dim result As IExecuteResult = Me.ExecuteMethodCall(Me, CType(MethodInfo.GetCurrentMethod,MethodInfo), id)
		Return CType(result.ReturnValue,ISingleResult(Of Genre))
	End Function
	
	<Global.System.Data.Linq.Mapping.FunctionAttribute(Name:="dbo.InsertMovie")>  _
	Public Function InsertMovie(<Global.System.Data.Linq.Mapping.ParameterAttribute(DbType:="NVarChar(100)")> ByVal title As String, <Global.System.Data.Linq.Mapping.ParameterAttribute(DbType:="NVarChar(50)")> ByVal director As String, <Global.System.Data.Linq.Mapping.ParameterAttribute(DbType:="Int")> ByVal genre As System.Nullable(Of Integer), <Global.System.Data.Linq.Mapping.ParameterAttribute(DbType:="Int")> ByVal runtime As System.Nullable(Of Integer), <Global.System.Data.Linq.Mapping.ParameterAttribute(DbType:="DateTime")> ByVal releasedate As System.Nullable(Of Date)) As Integer
		Dim result As IExecuteResult = Me.ExecuteMethodCall(Me, CType(MethodInfo.GetCurrentMethod,MethodInfo), title, director, genre, runtime, releasedate)
		Return CType(result.ReturnValue,Integer)
	End Function
End Class

<Global.System.Data.Linq.Mapping.TableAttribute(Name:="dbo.Movies")>  _
Partial Public Class Movie
	Implements System.ComponentModel.INotifyPropertyChanging, System.ComponentModel.INotifyPropertyChanged
	
	Private Shared emptyChangingEventArgs As PropertyChangingEventArgs = New PropertyChangingEventArgs(String.Empty)
	
	Private _Title As String
	
	Private _Director As String
	
	Private _Genre As Integer
	
	Private _Runtime As Integer
	
	Private _ReleaseDate As Date
	
	Private _Genre1 As EntityRef(Of Genre)
	
    #Region "Extensibility Method Definitions"
    Partial Private Sub OnLoaded()
    End Sub
    Partial Private Sub OnValidate(action As System.Data.Linq.ChangeAction)
    End Sub
    Partial Private Sub OnCreated()
    End Sub
    Partial Private Sub OnTitleChanging(value As String)
    End Sub
    Partial Private Sub OnTitleChanged()
    End Sub
    Partial Private Sub OnDirectorChanging(value As String)
    End Sub
    Partial Private Sub OnDirectorChanged()
    End Sub
    Partial Private Sub OnGenreChanging(value As Integer)
    End Sub
    Partial Private Sub OnGenreChanged()
    End Sub
    Partial Private Sub OnRuntimeChanging(value As Integer)
    End Sub
    Partial Private Sub OnRuntimeChanged()
    End Sub
    Partial Private Sub OnReleaseDateChanging(value As Date)
    End Sub
    Partial Private Sub OnReleaseDateChanged()
    End Sub
    #End Region
	
	Public Sub New()
		MyBase.New
		Me._Genre1 = CType(Nothing, EntityRef(Of Genre))
		OnCreated
	End Sub
	
	<Global.System.Data.Linq.Mapping.ColumnAttribute(Storage:="_Title", DbType:="NChar(100) NOT NULL", CanBeNull:=false, IsPrimaryKey:=true)>  _
	Public Property Title() As String
		Get
			Return Me._Title
		End Get
		Set
			If (String.Equals(Me._Title, value) = false) Then
				Me.OnTitleChanging(value)
				Me.SendPropertyChanging
				Me._Title = value
				Me.SendPropertyChanged("Title")
				Me.OnTitleChanged
			End If
		End Set
	End Property
	
	<Global.System.Data.Linq.Mapping.ColumnAttribute(Storage:="_Director", DbType:="NChar(50) NOT NULL", CanBeNull:=false)>  _
	Public Property Director() As String
		Get
			Return Me._Director
		End Get
		Set
			If (String.Equals(Me._Director, value) = false) Then
				Me.OnDirectorChanging(value)
				Me.SendPropertyChanging
				Me._Director = value
				Me.SendPropertyChanged("Director")
				Me.OnDirectorChanged
			End If
		End Set
	End Property
	
	<Global.System.Data.Linq.Mapping.ColumnAttribute(Storage:="_Genre", DbType:="Int NOT NULL")>  _
	Public Property Genre() As Integer
		Get
			Return Me._Genre
		End Get
		Set
			If ((Me._Genre = value)  _
						= false) Then
				If Me._Genre1.HasLoadedOrAssignedValue Then
					Throw New System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException()
				End If
				Me.OnGenreChanging(value)
				Me.SendPropertyChanging
				Me._Genre = value
				Me.SendPropertyChanged("Genre")
				Me.OnGenreChanged
			End If
		End Set
	End Property
	
	<Global.System.Data.Linq.Mapping.ColumnAttribute(Storage:="_Runtime", DbType:="Int NOT NULL")>  _
	Public Property Runtime() As Integer
		Get
			Return Me._Runtime
		End Get
		Set
			If ((Me._Runtime = value)  _
						= false) Then
				Me.OnRuntimeChanging(value)
				Me.SendPropertyChanging
				Me._Runtime = value
				Me.SendPropertyChanged("Runtime")
				Me.OnRuntimeChanged
			End If
		End Set
	End Property
	
	<Global.System.Data.Linq.Mapping.ColumnAttribute(Storage:="_ReleaseDate", DbType:="DateTime NOT NULL")>  _
	Public Property ReleaseDate() As Date
		Get
			Return Me._ReleaseDate
		End Get
		Set
			If ((Me._ReleaseDate = value)  _
						= false) Then
				Me.OnReleaseDateChanging(value)
				Me.SendPropertyChanging
				Me._ReleaseDate = value
				Me.SendPropertyChanged("ReleaseDate")
				Me.OnReleaseDateChanged
			End If
		End Set
	End Property
	
	<Global.System.Data.Linq.Mapping.AssociationAttribute(Name:="Genre_Movie", Storage:="_Genre1", ThisKey:="Genre", OtherKey:="ID", IsForeignKey:=true)>  _
	Public Property Genre1() As Genre
		Get
			Return Me._Genre1.Entity
		End Get
		Set
			Dim previousValue As Genre = Me._Genre1.Entity
			If ((Object.Equals(previousValue, value) = false)  _
						OrElse (Me._Genre1.HasLoadedOrAssignedValue = false)) Then
				Me.SendPropertyChanging
				If ((previousValue Is Nothing)  _
							= false) Then
					Me._Genre1.Entity = Nothing
					previousValue.Movies.Remove(Me)
				End If
				Me._Genre1.Entity = value
				If ((value Is Nothing)  _
							= false) Then
					value.Movies.Add(Me)
					Me._Genre = value.ID
				Else
					Me._Genre = CType(Nothing, Integer)
				End If
				Me.SendPropertyChanged("Genre1")
			End If
		End Set
	End Property
	
	Public Event PropertyChanging As PropertyChangingEventHandler Implements System.ComponentModel.INotifyPropertyChanging.PropertyChanging
	
	Public Event PropertyChanged As PropertyChangedEventHandler Implements System.ComponentModel.INotifyPropertyChanged.PropertyChanged
	
	Protected Overridable Sub SendPropertyChanging()
		If ((Me.PropertyChangingEvent Is Nothing)  _
					= false) Then
			RaiseEvent PropertyChanging(Me, emptyChangingEventArgs)
		End If
	End Sub
	
	Protected Overridable Sub SendPropertyChanged(ByVal propertyName As [String])
		If ((Me.PropertyChangedEvent Is Nothing)  _
					= false) Then
			RaiseEvent PropertyChanged(Me, New PropertyChangedEventArgs(propertyName))
		End If
	End Sub
End Class

<Global.System.Data.Linq.Mapping.TableAttribute(Name:="dbo.Genres")>  _
Partial Public Class Genre
	Implements System.ComponentModel.INotifyPropertyChanging, System.ComponentModel.INotifyPropertyChanged
	
	Private Shared emptyChangingEventArgs As PropertyChangingEventArgs = New PropertyChangingEventArgs(String.Empty)
	
	Private _ID As Integer
	
	Private _Name As String
	
	Private _Movies As EntitySet(Of Movie)
	
    #Region "Extensibility Method Definitions"
    Partial Private Sub OnLoaded()
    End Sub
    Partial Private Sub OnValidate(action As System.Data.Linq.ChangeAction)
    End Sub
    Partial Private Sub OnCreated()
    End Sub
    Partial Private Sub OnIDChanging(value As Integer)
    End Sub
    Partial Private Sub OnIDChanged()
    End Sub
    Partial Private Sub OnNameChanging(value As String)
    End Sub
    Partial Private Sub OnNameChanged()
    End Sub
    #End Region
	
	Public Sub New()
		MyBase.New
		Me._Movies = New EntitySet(Of Movie)(AddressOf Me.attach_Movies, AddressOf Me.detach_Movies)
		OnCreated
	End Sub
	
	<Global.System.Data.Linq.Mapping.ColumnAttribute(Storage:="_ID", DbType:="Int NOT NULL", IsPrimaryKey:=true)>  _
	Public Property ID() As Integer
		Get
			Return Me._ID
		End Get
		Set
			If ((Me._ID = value)  _
						= false) Then
				Me.OnIDChanging(value)
				Me.SendPropertyChanging
				Me._ID = value
				Me.SendPropertyChanged("ID")
				Me.OnIDChanged
			End If
		End Set
	End Property
	
	<Global.System.Data.Linq.Mapping.ColumnAttribute(Storage:="_Name", DbType:="NChar(20) NOT NULL", CanBeNull:=false)>  _
	Public Property Name() As String
		Get
			Return Me._Name
		End Get
		Set
			If (String.Equals(Me._Name, value) = false) Then
				Me.OnNameChanging(value)
				Me.SendPropertyChanging
				Me._Name = value
				Me.SendPropertyChanged("Name")
				Me.OnNameChanged
			End If
		End Set
	End Property
	
	<Global.System.Data.Linq.Mapping.AssociationAttribute(Name:="Genre_Movie", Storage:="_Movies", ThisKey:="ID", OtherKey:="Genre")>  _
	Public Property Movies() As EntitySet(Of Movie)
		Get
			Return Me._Movies
		End Get
		Set
			Me._Movies.Assign(value)
		End Set
	End Property
	
	Public Event PropertyChanging As PropertyChangingEventHandler Implements System.ComponentModel.INotifyPropertyChanging.PropertyChanging
	
	Public Event PropertyChanged As PropertyChangedEventHandler Implements System.ComponentModel.INotifyPropertyChanged.PropertyChanged
	
	Protected Overridable Sub SendPropertyChanging()
		If ((Me.PropertyChangingEvent Is Nothing)  _
					= false) Then
			RaiseEvent PropertyChanging(Me, emptyChangingEventArgs)
		End If
	End Sub
	
	Protected Overridable Sub SendPropertyChanged(ByVal propertyName As [String])
		If ((Me.PropertyChangedEvent Is Nothing)  _
					= false) Then
			RaiseEvent PropertyChanged(Me, New PropertyChangedEventArgs(propertyName))
		End If
	End Sub
	
	Private Sub attach_Movies(ByVal entity As Movie)
		Me.SendPropertyChanging
		entity.Genre1 = Me
	End Sub
	
	Private Sub detach_Movies(ByVal entity As Movie)
		Me.SendPropertyChanging
		entity.Genre1 = Nothing
	End Sub
End Class

<Global.System.Data.Linq.Mapping.TableAttribute(Name:="dbo.AllMovies")>  _
Partial Public Class AllMovies
	
	Private _Title As String
	
	Private _Director As String
	
	Private _Runtime As System.Nullable(Of Integer)
	
	Private _ReleaseDate As System.Nullable(Of Date)
	
	Private _Genre As String
	
	Public Sub New()
		MyBase.New
	End Sub
	
	<Global.System.Data.Linq.Mapping.ColumnAttribute(Storage:="_Title", DbType:="NChar(100)")>  _
	Public Property Title() As String
		Get
			Return Me._Title
		End Get
		Set
			If (String.Equals(Me._Title, value) = false) Then
				Me._Title = value
			End If
		End Set
	End Property
	
	<Global.System.Data.Linq.Mapping.ColumnAttribute(Storage:="_Director", DbType:="NChar(50)")>  _
	Public Property Director() As String
		Get
			Return Me._Director
		End Get
		Set
			If (String.Equals(Me._Director, value) = false) Then
				Me._Director = value
			End If
		End Set
	End Property
	
	<Global.System.Data.Linq.Mapping.ColumnAttribute(Storage:="_Runtime", DbType:="Int")>  _
	Public Property Runtime() As System.Nullable(Of Integer)
		Get
			Return Me._Runtime
		End Get
		Set
			If (Me._Runtime.Equals(value) = false) Then
				Me._Runtime = value
			End If
		End Set
	End Property
	
	<Global.System.Data.Linq.Mapping.ColumnAttribute(Storage:="_ReleaseDate", DbType:="DateTime")>  _
	Public Property ReleaseDate() As System.Nullable(Of Date)
		Get
			Return Me._ReleaseDate
		End Get
		Set
			If (Me._ReleaseDate.Equals(value) = false) Then
				Me._ReleaseDate = value
			End If
		End Set
	End Property
	
	<Global.System.Data.Linq.Mapping.ColumnAttribute(Storage:="_Genre", DbType:="NChar(20)")>  _
	Public Property Genre() As String
		Get
			Return Me._Genre
		End Get
		Set
			If (String.Equals(Me._Genre, value) = false) Then
				Me._Genre = value
			End If
		End Set
	End Property
End Class