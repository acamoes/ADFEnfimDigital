<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Tutorias
 *
 * @author André Camões
 */
class Tutorias
{

    //put your code here

    public function __construct()
    {
        
    }
    public static function getTutoria($data)
    {
        $query = "SELECT 
        r.idRequirements as requisito,r.order,r.name, r.duration, r.purpose, r.task, r.documents, r.achievement,
        c.name as curso
        FROM course c INNER JOIN requirements r ON c.idCourse=r.idCourse
        WHERE r.idRequirements=".$data['idRequirements'];

        $con       = new Database();
        $resultado = $con->get($query);
        if (!$resultado) {
            return false;
        }
        return $resultado[0];
    }
   
    public static function getTutorias($data)
    {
        $query = "SELECT idMentoring, idCourse, Requisito, idRequirement,idUser, idDirector,username as Tutor, viewed, mentoringcol,commentTutor,commentDirector 
        FROM 
        (
             SELECT m.idMentoring, r.idCourse, r.name as Requisito,  m.idRequirement, m.idTutor, m.idDirector, m.idUser, m.viewed, m.mentoringcol, m.commentDirector, m.commentTutor
             FROM mentoring m 
             INNER JOIN requirements r ON m.idRequirement = r.idRequirements
             INNER JOIN course c ON r.idCourse = c.idCourse
        ) 
        AS RESULTS1 JOIN users u on idTutor = u.idUsers";
        //WHERE idCourse =" .$data['idCourse'];
        

        // $query = "
        // SELECT * FROM (
        //     SELECT * FROM 
        //      (
        //          SELECT idMentoring, idCourse, Requisito, idRequirement,idUser, idDirector,username as Tutor, viewed, mentoringcol,commentTutor,commentDirector 
        //          FROM 
        //          (
        //                 SELECT m.idMentoring, r.idCourse, r.name as Requisito,  m.idRequirement, m.idTutor, m.idDirector, m.idUser, m.viewed, m.mentoringcol, m.commentDirector, m.commentTutor
        //               FROM mentoring m 
        //               INNER JOIN requirements r ON m.idRequirement = r.idRequirements
        //                INNER JOIN course c ON r.idCourse = c.idCourse
        //          ) 
        //          AS RESULTS1 JOIN users u on idTutor = u.idUsers				
        //      ) t1
                     
        //      INNER JOIN
        //      (
        //          SELECT idMentoring as idMentoring2, username as Diretor
        //          FROM mentoring  INNER JOIN users u 
        //          on idDirector = u.idUsers
        //      ) t2
             
        //      ON t1.idmentoring = t2.idMentoring2
             
        //      INNER JOIN
        //      (
        //          SELECT idMentoring as idMentoring3, name as Formando
        //          FROM mentoring INNER JOIN users u 
        //          on idUser = u.idUsers
        //      ) t3
             
        //      ON t1.idmentoring = t3.idMentoring3
          
        //   ) final 

        // WHERE idCourse=".$data['idCourse'];

        $con       = new Database();
        $resultado = $con->get($query);
        if (!$resultado) {
            return false;
        }
        return $resultado;
    }

    // public static function apagarTutorias($data): array
    // {
    //     $query     = "UPDATE requirements SET status='Inativo' WHERE idRequirements=".$data['idRequirements']." ";
    //     $con       = new Database();
    //     $resultado = $con->set($query);
    //     if (!$resultado) {
    //         return ['success' => false, 'message' => 'O registo não foi alterado.'];
    //     }
    //     return ['success' => true, 'message' => 'Registo alterado.'];
    // }

    // public static function inserirTutorias($data)
    // {
    //     $query     = "INSERT INTO requirements ".
    //         "(idCourse,name,`order`,duration,status,observations,purpose,documents,achievement,task) ".
    //         "VALUES "."('".
    //         $data ['idCourse']."','".
    //         $data ['name']."',".
    //         $data ['order'].",'".
    //         $data ['duration']."','".
    //         $data ['status']."','".
    //         $data ['observations']."','".
    //         $data ['purpose']."','".
    //         $data ['documents']."','".
    //         $data ['achievements']."','".
    //         $data ['todo']."')";
    //     $con       = new Database();
    //     $resultado = $con->set($query);
    //     if (!$resultado) {
    //         return ['success' => false, 'message' => 'Não foi aceite o registo.'];
    //     }
    //     return ['success' => true, 'message' => 'Registo aceite.'];
    // }

    // public static function atualizarTutorias($data)
    // {
    //     $query     = "UPDATE requirements SET ".
    //         "idCourse=".$data ['idCourse'].",".
    //         "name='".$data ['name']."',".
    //         "`order`=".$data ['order'].",'".
    //         "duration=".$data ['duration'].",".
    //         "observations=".$data ['observations'].",".
    //         "purpose=".$data ['purpose'].",".
    //         "documents=".$data ['documents'].",".
    //         "achievements=".$data ['achievements'].",".
    //         "todo=".$data ['todo'].",".
    //         "status='".$data ['status']."' ".
    //         "WHERE idRequirements=".$data ['idRequirements'];
    //     $con       = new Database();
    //     $resultado = $con->set($query);
    //     if (!$resultado) {
    //         return ['success' => false, 'message' => 'Não foi aceite o registo.'];
    //     }
    //     return ['success' => true, 'message' => 'Registo aceite.'];
    // }
}